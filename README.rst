multitenancy-helpdesk - A Django powered ticket tracker for django-multitenancy.
=================================================================================

.. [![Build Status](https://dev.azure.com/django-helpdesk/django-helpdesk/_apis/build/status/django-helpdesk.django-helpdesk?branchName=master)](https://dev.azure.com/django-helpdesk/django-helpdesk/_build/latest?definitionId=1&branchName=master)

.. .. image:: https://codecov.io/gh/django-helpdesk/django-helpdesk/branch/develop/graph/badge.svg
..   :target: https://codecov.io/gh/django-helpdesk/django-helpdesk

multitenancy-helpdesk is a fork form https://github.com/django-helpdesk/django-helpdesk , which is integrated with https://github.com/tekanokhambane/django-multitenancy for ticket management and customer support. This is not an alternative to https://github.com/django-helpdesk/django-helpdesk but a modified version to work with https://github.com/tekanokhambane/django-multitenancy.
You can check the complete documentation of django-helpdesk in the docs/ directory,
or online at http://django-helpdesk.readthedocs.org/.

Demo Quickstart
---------------



Installation
------------

`multitenancy-helpdesk` requires:

* Python 3.8+
* Django 3.2 LTS highly recommended (early adopters may test Django 4)

You can quickly install the latest stable version of `django-helpdesk`
app via `pip`::

    pip install multitenancy-helpdesk

You may also check out the `master` branch on GitHub, and install manually::

    python setup.py install

Either way, you will need to add `django-helpdesk` to an existing
Django project.

For further installation information see `docs/install.html`
and `docs/configuration.html`

Developer Environment
---------------------

Follow these steps to set up your development environment to contribute to helpdesk:
 - install a virtual environment
     - using virtualenv from the helpdesk base folder do::
          virtualenv .venv && source .venv/bin/activate

 - install the requirements for development::
    pip install -r requirements.txt -r requirements-dev.txt

To see option for the Makefile run: `make`

The project enforces a standardized formatting in the CI/CD pipeline. To ensure you have the correct formatting run::
    make checkformat
    
To auto format any code use this::
    make format

Testing
-------

From the command line you can run the tests using: `make test`

See `quicktest.py` for usage details.

Upgrading from previous versions
--------------------------------

If you are upgrading from a previous version of `django-helpdesk` that used
migrations, get an up to date version of the code base (eg by using
`git pull` or `pip install --upgrade django-helpdesk`) then migrate the database::

    python manage.py migrate helpdesk --db-dry-run # DB untouched
    python manage.py migrate helpdesk

Lastly, restart your web server software (eg Apache) or FastCGI instance, to
ensure the latest changes are in use.

Unfortunately we are unable to assist if you are upgrading from a
version of `django-helpdesk` prior to migrations (ie pre-2011).

You can continue to the 'Initial Configuration' area, if needed.

Contributing
------------

We're happy to include any type of contribution! This can be:

* back-end python/django code development
* front-end web development (HTML/Javascript, especially jQuery)
* language translations
* writing improved documentation and demos

For more information on contributing, please see the `CONTRIBUTING.rst` file.


Licensing
---------

django-helpdesk is licensed under terms of the BSD 3-clause license.
See the `LICENSE` file for full licensing terms.

Note that django-helpdesk is distributed with 3rd party products which
have their own licenses. See LICENSE.3RDPARTY for license terms for
included packages.

.. _note: http://docs.djangoproject.com/en/dev/ref/databases/#sqlite-string-matching

