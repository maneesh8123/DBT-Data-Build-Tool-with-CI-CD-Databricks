{% set fruits = ['apple', 'banana', 'orange'] %}

{% for fruit in fruits %}
    {% if fruit== 'apple' %}
        {{ fruit }}
    {% endif %}
{% endfor %}