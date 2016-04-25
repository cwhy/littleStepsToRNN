"""
Module for fake-data generation for the littleStepsToRNN project
"""
import numpy as np
import bokeh.plotting as bp
from bokeh.palettes import Spectral11, Blues9, Greys9
import numpy.random as rnd


def mix_shuffle(_Xs):
    _Xs_lb = []
    for i, _X in enumerate(_Xs):
        _label = i * np.ones((_X.shape[0], 1))
        _X = np.hstack((_X, _label))
        _Xs_lb.append(_X)

    _mixed = np.vstack(_Xs_lb)
    rnd.shuffle(_mixed)
    _ft_all = _mixed[:, :2]
    _lb_all = np.round(_mixed[:, 2]).astype(int)
    return _ft_all, _lb_all


def split(_fts, _lbs, test_ratio):
    indices = range(_lbs.size)
    i_test = rnd.choice(indices, size=round(test_ratio * _lbs.size))
    i_train = np.array([i for i in indices if i not in i_test])
    return (_fts[i_train, :], _lbs[i_train]), (_fts[i_test, :], _lbs[i_test])


def visualize_2D(_Classes, classifyF=None, res=150):
    _xmins = []
    _xmaxs = []
    for _C in _Classes:
        _xmins.append(np.min(_C, axis=0))
        _xmaxs.append(np.max(_C, axis=0))
    _xmin = np.min(np.array(_xmins), axis=0)
    _xmax = np.max(np.array(_xmaxs), axis=0)
    _xr = np.vstack((_xmin, _xmax)).T
    p = bp.figure(x_range=_xr[0, :].tolist(), y_range=_xr[1, :].tolist())
    if classifyF:
        x_mesh = np.linspace(_xr[0, 0], _xr[0, 1], res)
        y_mesh = np.linspace(_xr[1, 0], _xr[1, 1], res)
        _xx, _yy = np.meshgrid(x_mesh, y_mesh)
        y_hats = classifyF(np.vstack((np.ravel(_xx), np.ravel(_yy))).T)
        y_hats_xy = y_hats.reshape((res, res))
        p.image(image=[y_hats_xy], x=[_xr[0, 0]], y=[_xr[1, 0]],
                dw=[_xr[0, 1] - _xr[0, 0]], dh=[_xr[1, 1] - _xr[1, 0]],
                palette=Greys9[-5:])

    color_loop = ["#4F354B",
                  "#468732",
                  "#9B68AE",
                  "#82762B",
                  "#5276A5",
                  "#C35C2C",
                  "#37725F",
                  "#C65081",
                  "#493616",
                  "#AE4C4C"]
    rnd.shuffle(color_loop)
    for i, _C in enumerate(_Classes):
        _col = color_loop[i % 11]
        p.circle(x=_C[:, 0], y=_C[:, 1], color=_col)
    bp.show(p)


class DataSet:
    def __init__(self, X, y):
        self.X = X
        self.y = y

    def if_y_is(self, _c):
        idx = self.y == _c
        return self.X[idx, :]


class GaussianMixture:
    def __init__(self,
                 dim=2,
                 n_class=2,
                 n_samples=100,
                 mu_diff=(3, 4),
                 sigma_range=(1.5, 2.5),
                 split_ratio=0.2):
        """

        :type dim: int
        """
        self.xs_mu = []
        self.xs_sigma = []
        self.Classes = []
        _mu = rnd.uniform(mu_diff[0], mu_diff[-1], dim)
        for _c in range(n_class):
            _mu += rnd.choice([-1, 1], dim)*rnd.uniform(mu_diff[0], mu_diff[-1], dim)
            _sigma = rnd.uniform(sigma_range[0], sigma_range[-1], dim)
            self.xs_mu.append(_mu)
            self.xs_sigma.append(_sigma)
            self.Classes.append(rnd.normal(_mu, _sigma, (n_samples, dim)))

        self.X, self.y = mix_shuffle(self.Classes)
        (tr_X, tr_y), (tst_X, tst_y) = split(self.X, self.y, split_ratio)
        self.tr = DataSet(tr_X, tr_y)
        self.tst = DataSet(tst_X, tst_y)
