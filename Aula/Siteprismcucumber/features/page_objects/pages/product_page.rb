module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors
        element  :main_image
    end
end