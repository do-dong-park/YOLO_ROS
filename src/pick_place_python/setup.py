from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup(
    packages=['pick_place_python'],
    package_dir={'': 'src'}
)

setup(**d)