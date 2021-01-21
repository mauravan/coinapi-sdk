"""
    OEML - REST API

    This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>         # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

import nulltype  # noqa: F401

from openapi_client.model_utils import (  # noqa: F401
    ApiTypeError,
    ModelComposed,
    ModelNormal,
    ModelSimple,
    cached_property,
    change_keys_js_to_python,
    convert_js_args_to_python_args,
    date,
    datetime,
    file_type,
    none_type,
    validate_get_composed_info,
)

def lazy_import():
    from openapi_client.model.exec_inst import ExecInst
    from openapi_client.model.ord_side import OrdSide
    from openapi_client.model.ord_type import OrdType
    from openapi_client.model.time_in_force import TimeInForce
    globals()['ExecInst'] = ExecInst
    globals()['OrdSide'] = OrdSide
    globals()['OrdType'] = OrdType
    globals()['TimeInForce'] = TimeInForce


class OrderNewSingleRequest(ModelNormal):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Attributes:
      allowed_values (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          with a capitalized key describing the allowed value and an allowed
          value. These dicts store the allowed enum values.
      attribute_map (dict): The key is attribute name
          and the value is json key in definition.
      discriminator_value_class_map (dict): A dict to go from the discriminator
          variable value to the discriminator class name.
      validations (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          that stores validations for max_length, min_length, max_items,
          min_items, exclusive_maximum, inclusive_maximum, exclusive_minimum,
          inclusive_minimum, and regex.
      additional_properties_type (tuple): A tuple of classes accepted
          as additional properties values.
    """

    allowed_values = {
    }

    validations = {
    }

    additional_properties_type = None

    _nullable = False

    @cached_property
    def openapi_types():
        """
        This must be a method because a model may have properties that are
        of type self, this must run after the class is loaded

        Returns
            openapi_types (dict): The key is attribute name
                and the value is attribute type.
        """
        lazy_import()
        return {
            'exchange_id': (str,),  # noqa: E501
            'client_order_id': (str,),  # noqa: E501
            'amount_order': (float,),  # noqa: E501
            'price': (float,),  # noqa: E501
            'side': (OrdSide,),  # noqa: E501
            'order_type': (OrdType,),  # noqa: E501
            'time_in_force': (TimeInForce,),  # noqa: E501
            'symbol_id_exchange': (str,),  # noqa: E501
            'symbol_id_coinapi': (str,),  # noqa: E501
            'expire_time': (date,),  # noqa: E501
            'exec_inst': (ExecInst,),  # noqa: E501
        }

    @cached_property
    def discriminator():
        return None


    attribute_map = {
        'exchange_id': 'exchange_id',  # noqa: E501
        'client_order_id': 'client_order_id',  # noqa: E501
        'amount_order': 'amount_order',  # noqa: E501
        'price': 'price',  # noqa: E501
        'side': 'side',  # noqa: E501
        'order_type': 'order_type',  # noqa: E501
        'time_in_force': 'time_in_force',  # noqa: E501
        'symbol_id_exchange': 'symbol_id_exchange',  # noqa: E501
        'symbol_id_coinapi': 'symbol_id_coinapi',  # noqa: E501
        'expire_time': 'expire_time',  # noqa: E501
        'exec_inst': 'exec_inst',  # noqa: E501
    }

    _composed_schemas = {}

    required_properties = set([
        '_data_store',
        '_check_type',
        '_spec_property_naming',
        '_path_to_item',
        '_configuration',
        '_visited_composed_classes',
    ])

    @convert_js_args_to_python_args
    def __init__(self, exchange_id, client_order_id, amount_order, price, side, order_type, time_in_force, *args, **kwargs):  # noqa: E501
        """OrderNewSingleRequest - a model defined in OpenAPI

        Args:
            exchange_id (str): Exchange identifier used to identify the routing destination.
            client_order_id (str): The unique identifier of the order assigned by the client.
            amount_order (float): Order quantity.
            price (float): Order price.
            side (OrdSide):
            order_type (OrdType):
            time_in_force (TimeInForce):

        Keyword Args:
            _check_type (bool): if True, values for parameters in openapi_types
                                will be type checked and a TypeError will be
                                raised if the wrong type is input.
                                Defaults to True
            _path_to_item (tuple/list): This is a list of keys or values to
                                drill down to the model in received_data
                                when deserializing a response
            _spec_property_naming (bool): True if the variable names in the input data
                                are serialized names, as specified in the OpenAPI document.
                                False if the variable names in the input data
                                are pythonic names, e.g. snake case (default)
            _configuration (Configuration): the instance to use when
                                deserializing a file_type parameter.
                                If passed, type conversion is attempted
                                If omitted no type conversion is done.
            _visited_composed_classes (tuple): This stores a tuple of
                                classes that we have traveled through so that
                                if we see that class again we will not use its
                                discriminator again.
                                When traveling through a discriminator, the
                                composed schema that is
                                is traveled through is added to this set.
                                For example if Animal has a discriminator
                                petType and we pass in "Dog", and the class Dog
                                allOf includes Animal, we move through Animal
                                once using the discriminator, and pick Dog.
                                Then in Dog, we will make an instance of the
                                Animal class but this time we won't travel
                                through its discriminator because we passed in
                                _visited_composed_classes = (Animal,)
            symbol_id_exchange (str): Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            symbol_id_coinapi (str): CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.. [optional]  # noqa: E501
            expire_time (date): Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.. [optional]  # noqa: E501
            exec_inst (ExecInst): [optional]  # noqa: E501
        """

        _check_type = kwargs.pop('_check_type', True)
        _spec_property_naming = kwargs.pop('_spec_property_naming', False)
        _path_to_item = kwargs.pop('_path_to_item', ())
        _configuration = kwargs.pop('_configuration', None)
        _visited_composed_classes = kwargs.pop('_visited_composed_classes', ())

        if args:
            raise ApiTypeError(
                "Invalid positional arguments=%s passed to %s. Remove those invalid positional arguments." % (
                    args,
                    self.__class__.__name__,
                ),
                path_to_item=_path_to_item,
                valid_classes=(self.__class__,),
            )

        self._data_store = {}
        self._check_type = _check_type
        self._spec_property_naming = _spec_property_naming
        self._path_to_item = _path_to_item
        self._configuration = _configuration
        self._visited_composed_classes = _visited_composed_classes + (self.__class__,)

        self.exchange_id = exchange_id
        self.client_order_id = client_order_id
        self.amount_order = amount_order
        self.price = price
        self.side = side
        self.order_type = order_type
        self.time_in_force = time_in_force
        for var_name, var_value in kwargs.items():
            if var_name not in self.attribute_map and \
                        self._configuration is not None and \
                        self._configuration.discard_unknown_keys and \
                        self.additional_properties_type is None:
                # discard variable.
                continue
            setattr(self, var_name, var_value)
