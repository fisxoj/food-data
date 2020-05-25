;;;; food-data.asd

(defsystem food-data
  :defsystem-depends-on ("openapi/client/dex")
  :description "Generated client for the US Department of agriculture's food data API."
  :author "Matt Novenstern <fisxoj@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :components ((:openapi/client "fdc_api"
                :type "json"
                :package "food-data"))
  :homepage "https://fisxoj.github.io/food-data/"
  :in-order-to ((test-op (test-op food-data/test)))
  :long-description #.(uiop:read-file-string #P"README.rst"))
