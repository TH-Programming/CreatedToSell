module SalesHelper

    def merch_price(sale)
        sale.merchandise.price
    end

    def merch_title(sale)
        sale.merchandise.title
    end

    def merch_creator_name(sale)
        sale.merchandise.creator.username
    end
end
