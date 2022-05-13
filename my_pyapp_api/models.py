from django.db import models


class Item(models.Model):
    uuid = models.UUIDField(primary_key=True)
    price = models.PositiveIntegerField
    discount = models.FloatField
    tax = models.FloatField
    order_id = models.UUIDField


class Order(models.Model):
    uuid = models.UUIDField
    total_amount = models.PositiveBigIntegerField
    discount_amount = models.IntegerField
    tax_amount = models.IntegerField
    items = models.ForeignKey(to_field=Item.order_id)

