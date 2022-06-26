from setuptools import find_packages, setup

setup(
    name='app',
    version='0.1',
    packages=find_packages(),
    data_files=[('instance',['instance/app.sqlite'])],
    include_package_data=True,
    zip_safe=False,
    install_requires=[
        'flask',
    ],
)
