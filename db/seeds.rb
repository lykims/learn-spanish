# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

greetings_category = Category.where(name: 'Greetings', description: 'Greetings').first_or_create

calendar_category = Category.where(name: 'Calendar', description: 'Months, Days of the week, Periods of the day').first_or_create

numbers_category = Category.where(name: 'Numbers', description: 'Numbers').first_or_create

vocabulary_category = Category.where(name: 'Vocabulary', description: 'Vocabulary').first_or_create

words = Word.create([
        {english: 'Hello', spanish: 'Hola', category_id:greetings_category.id},
        {english: 'Goodbye', spanish: 'Adiós', category_id:greetings_category.id},
        {english: 'Good morning', spanish: 'Buenos días', category_id:greetings_category.id},
        {english: 'Good afternoon', spanish: 'Buenos tardes', category_id:greetings_category.id},
        {english: 'Good evening', spanish: 'Buenas noches', category_id:greetings_category.id},
        {english: 'See you later', spanish: 'Hasta luego', category_id:greetings_category.id},
        {english: 'See you soon', spanish: 'Hasta pronto', category_id:greetings_category.id},
        {english: 'See you tomorrow', spanish: 'Hasta mañana', category_id:greetings_category.id},
        {english: 'See you on Monday', spanish: 'Hasta lunes', category_id:greetings_category.id},

        {english: 'January', spanish: 'enero', category_id:calendar_category.id, tag:'month'},
        {english: 'February', spanish: 'febrero', category_id:calendar_category.id, tag:'month'},
        {english: 'March', spanish: 'marzo', category_id:calendar_category.id, tag:'month'},
        {english: 'April', spanish: 'abril', category_id:calendar_category.id, tag:'month'},
        {english: 'May', spanish: 'mayo', category_id:calendar_category.id, tag:'month'},
        {english: 'June', spanish: 'junio', category_id:calendar_category.id, tag:'month'},
        {english: 'July', spanish: 'julio', category_id:calendar_category.id, tag:'month'},
        {english: 'August', spanish: 'agosto', category_id:calendar_category.id, tag:'month'},
        {english: 'September', spanish: 'septiembre', category_id:calendar_category.id, tag:'month'},
        {english: 'October', spanish: 'octubre', category_id:calendar_category.id, tag:'month'},
        {english: 'November', spanish: 'noviembre', category_id:calendar_category.id, tag:'month'},
        {english: 'December', spanish: 'diciembre', category_id:calendar_category.id, tag:'month'},
        {english: 'Monday', spanish: 'lunes', category_id:calendar_category.id, tag:'day'},
        {english: 'Tuesday', spanish: 'martes', category_id:calendar_category.id, tag:'day'},
        {english: 'Wednesday', spanish: 'miércoles', category_id:calendar_category.id, tag:'day'},
        {english: 'Thursday', spanish: 'jueves', category_id:calendar_category.id, tag:'day'},
        {english: 'Friday', spanish: 'viernes', category_id:calendar_category.id, tag:'day'},
        {english: 'Saturday', spanish: 'sábado', category_id:calendar_category.id, tag:'day'},
        {english: 'midnight', spanish: 'la medianoche', category_id:calendar_category.id, tag:'day'},
        {english: 'noon', spanish: 'el mediodía', category_id:calendar_category.id, tag:'day'},
        {english: 'afternoon', spanish: 'la tarde', category_id:calendar_category.id, tag:'day'},
        {english: 'evening', spanish: 'la noche', category_id:calendar_category.id, tag:'day'},

        # A
        {english: 'accident', spanish: 'el accidente', category_id:vocabulary_category.id},
        {english: 'add', spanish: '', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'address', spanish: 'la dirección', category_id:vocabulary_category.id},
        {english: 'age', spanish: 'la edad', category_id:vocabulary_category.id},
        {english: 'allergy', spanish: '', category_id:vocabulary_category.id},
        # B
        {english: 'bill', spanish: 'la nota', category_id:vocabulary_category.id, tag:'restaurant'},
        {english: 'buy', spanish: 'comprar', category_id:vocabulary_category.id, english_prefix: 'to'},
        # C
        # D
        {english: 'drink', spanish: 'la bebida', category_id:vocabulary_category.id, tag:'noun'},
        {english: 'drink', spanish: 'beber', category_id:vocabulary_category.id, english_prefix: 'to'},
        # E
        # F
        {english: 'friend', spanish: '', category_id:vocabulary_category.id},
        # G
        {english: 'go', spanish: '', category_id:vocabulary_category.id, english_prefix: 'to'},
        # H
        {english: 'help', spanish: 'ayudar', category_id:vocabulary_category.id, english_prefix: 'to'},
        # I
        # J
        # K
        # L
        {english: 'like', spanish: '', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'love', spanish: '', category_id:vocabulary_category.id, english_prefix: 'to'},
        # M
        # N
        # O
        # P
        # Q
        # R
        # S
        # T
        # U
        # V
        # W
        {english: 'wine', spanish: '', category_id:vocabulary_category.id},
        # X
        # Y
        {english: 'year', spanish: 'el año', category_id:vocabulary_category.id}
        # Z
    ])
