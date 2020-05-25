.. image:: https://travis-ci.org/fisxoj/food-data.svg?branch=master
   :target: https://travis-ci.org/fisxoj/food-data
   :alt: Travis CI status badge
.. image:: https://coveralls.io/repos/github/fisxoj/food-data/badge.svg?branch=master
   :target: https://coveralls.io/github/fisxoj/food-data?branch=master
   :alt: Coveralls status badge
.. image:: https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg
   :alt: Contributor Covenant
   :target: CODE_OF_CONDUCT.md


:Source: `https://github.com/fisxoj/food-data <https://github.com/fisxoj/food-data>`_
:Docs:  `https://fisxoj.github.io/food-data/ <https://fisxoj.github.io/food-data/>`_

food-data is a common lisp client for the `Food Data Central API`_ provided by the US Department of Agriculture.  It's generated automatically using the `openapi spec`_ that they provide.

In their words:
"The FoodData Central API provides REST access to FoodData Central (FDC). It is intended primarily to assist application developers wishing to incorporate nutrient data into their applications or websites."

Futher documentation of the API can be found at their `API Documentation Page`_.

.. _Food Data Central API: https://fdc.nal.usda.gov/api-guide.html
.. _openapi spec: https://fdc.nal.usda.gov/api-guide.html#bkmk-8
.. _API Documentation Page: https://fdc.nal.usda.gov/data-documentation.html

-------
Example
-------

To use the library, you must set an api key, which you can `sign up for here <https://fdc.nal.usda.gov/api-key-signup.html>`_.  Then, you must set :variable:`food-data:*api-key*` so it will be used with all requests.::

   (setf food-data:*api-key* "My long api key string")

Then, you should be able to make requests, like so:::

   (food-data:get-food 497965 "abridged" nil)

Returns::

   #S(OPENAPI/CLIENT:API-RESPONSE
   :STATUS 200
   :CONTENT-TYPE NIL
   :BODY "{\"fdcId\":497965,\"description\":\"WISH-BONE, LIGHT HONEY DIJON DRESSING\",\"dataType\":\"Branded\",\"publicationDate\":\"2019-04-01\",\"brandOwner\":\"Lipton\",\"gtinUpc\":\"041000005466\",\"foodNutrients\":[{\"number\":\"291\",\"name\":\"Fiber, total dietary\",\"amount\":0E-8,\"unitName\":\"G\",\"derivationCode\":\"LCCD\",\"derivationDescription\":\"Calculated from a daily value percentage per serving size measure\"},{\"number\":\"301\",\"name\":\"Calcium, Ca\",\"amount\":0E-8,\"unitName\":\"MG\",\"derivationCode\":\"LCCD\",\"derivationDescription\":\"Calculated from a daily value percentage per serving size measure\"},{\"number\":\"303\",\"name\":\"Iron, Fe\",\"amount\":0E-8,\"unitName\":\"MG\",\"derivationCode\":\"LCCD\",\"derivationDescription\":\"Calculated from a daily value percentage per serving size measure\"},{\"number\":\"318\",\"name\":\"Vitamin A, IU\",\"amount\":1333.00000000,\"unitName\":\"IU\",\"derivationCode\":\"LCCD\",\"derivationDescription\":\"Calculated from a daily value percentage per serving size measure\"},{\"number\":\"401\",\"name\":\"Vitamin C, total ascorbic acid\",\"amount\":0E-8,\"unitName\":\"MG\",\"derivationCode\":\"LCCD\",\"derivationDescription\":\"Calculated from a daily value percentage per serving size measure\"},{\"number\":\"203\",\"name\":\"Protein\",\"amount\":0E-8,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"204\",\"name\":\"Total lipid (fat)\",\"amount\":16.67000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"205\",\"name\":\"Carbohydrate, by difference\",\"amount\":20.00000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"208\",\"name\":\"Energy\",\"amount\":233.00000000,\"unitName\":\"KCAL\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"269\",\"name\":\"Sugars, total including NLEA\",\"amount\":13.33000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"307\",\"name\":\"Sodium, Na\",\"amount\":800.00000000,\"unitName\":\"MG\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"601\",\"name\":\"Cholesterol\",\"amount\":17.00000000,\"unitName\":\"MG\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"605\",\"name\":\"Fatty acids, total trans\",\"amount\":0E-8,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"606\",\"name\":\"Fatty acids, total saturated\",\"amount\":3.33000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"645\",\"name\":\"Fatty acids, total monounsaturated\",\"amount\":3.33000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"},{\"number\":\"646\",\"name\":\"Fatty acids, total polyunsaturated\",\"amount\":10.00000000,\"unitName\":\"G\",\"derivationCode\":\"LCCS\",\"derivationDescription\":\"Calculated from value per serving size measure\"}]}"
   :HEADERS #<HASH-TABLE :TEST EQUAL :COUNT 15 {100A28F563}>)
