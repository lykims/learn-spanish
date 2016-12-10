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
        {english: 'midnight', spanish: 'la medianoche', category_id:calendar_category.id, tag:'period'},
        {english: 'noon', spanish: 'el mediodía', category_id:calendar_category.id, tag:'period'},
        {english: 'afternoon', spanish: 'la tarde', category_id:calendar_category.id, tag:'period'},
        {english: 'evening', spanish: 'la noche', category_id:calendar_category.id, tag:'period'},

        #
        {english: '1', spanish: 'uno', category_id:numbers_category.id, tag:'1'},
        {english: '2', spanish: 'dos', category_id:numbers_category.id, tag:'1'},
        {english: '3', spanish: 'tres', category_id:numbers_category.id, tag:'1'},
        {english: '4', spanish: 'cuatro', category_id:numbers_category.id, tag:'1'},
        {english: '5', spanish: 'cinco', category_id:numbers_category.id, tag:'1'},
        {english: '6', spanish: 'seis', category_id:numbers_category.id, tag:'1'},
        {english: '7', spanish: 'siete', category_id:numbers_category.id, tag:'1'},
        {english: '8', spanish: 'ocho', category_id:numbers_category.id, tag:'1'},
        {english: '9', spanish: 'nueve', category_id:numbers_category.id, tag:'1'},
        {english: '10', spanish: 'diez', category_id:numbers_category.id, tag:'2'},
        {english: '11', spanish: 'once', category_id:numbers_category.id, tag:'2'},
        {english: '12', spanish: 'doce', category_id:numbers_category.id, tag:'2'},
        {english: '13', spanish: 'trece', category_id:numbers_category.id, tag:'2'},
        {english: '14', spanish: 'catorce', category_id:numbers_category.id, tag:'2'},
        {english: '15', spanish: 'quince', category_id:numbers_category.id, tag:'2'},
        {english: '16', spanish: 'dieciséis', category_id:numbers_category.id, tag:'2'},
        {english: '17', spanish: 'diecisiete', category_id:numbers_category.id, tag:'2'},
        {english: '18', spanish: 'dieciocho', category_id:numbers_category.id, tag:'2'},
        {english: '19', spanish: 'diecinueve', category_id:numbers_category.id, tag:'2'},
        {english: '20', spanish: 'veinte', category_id:numbers_category.id, tag:'3'},
        {english: '21', spanish: 'veintiuno', category_id:numbers_category.id, tag:'3'},
        {english: '22', spanish: 'veintidós', category_id:numbers_category.id, tag:'3'},
        {english: '23', spanish: 'veintitrés', category_id:numbers_category.id, tag:'3'},
        {english: '24', spanish: 'veinticuatro', category_id:numbers_category.id, tag:'3'},
        {english: '25', spanish: 'veinticinco', category_id:numbers_category.id, tag:'3'},
        {english: '26', spanish: 'veintiséis', category_id:numbers_category.id, tag:'3'},
        {english: '27', spanish: 'veintisiete', category_id:numbers_category.id, tag:'3'},
        {english: '28', spanish: 'veintiocho', category_id:numbers_category.id, tag:'3'},
        {english: '29', spanish: 'veintinueve', category_id:numbers_category.id, tag:'3'},
        {english: '30', spanish: 'treinta', category_id:numbers_category.id, tag:'4'},
        {english: '31', spanish: 'treinta y uno', category_id:numbers_category.id, tag:'4'},
        {english: '40', spanish: 'cuarenta', category_id:numbers_category.id, tag:'4'},
        {english: '42', spanish: 'cuarenta y dos', category_id:numbers_category.id, tag:'4'},
        {english: '50', spanish: 'cincuenta', category_id:numbers_category.id, tag:'4'},
        {english: '53', spanish: 'cincuenta y tres', category_id:numbers_category.id, tag:'4'},
        {english: '60', spanish: 'sesenta', category_id:numbers_category.id, tag:'4'},
        {english: '70', spanish: 'setenta', category_id:numbers_category.id, tag:'4'},
        {english: '80', spanish: 'ochenta', category_id:numbers_category.id, tag:'4'},
        {english: '90', spanish: 'noventa', category_id:numbers_category.id, tag:'4'},
        {english: '100', spanish: 'cien', category_id:numbers_category.id, tag:'5'},
        {english: '101', spanish: 'ciento uno', category_id:numbers_category.id, tag:'5'},
        {english: '110', spanish: 'ciento diez', category_id:numbers_category.id, tag:'5'},
        {english: '142', spanish: 'ciento cuarenta y dos', category_id:numbers_category.id, tag:'5'},
        {english: '200', spanish: 'doscientos', category_id:numbers_category.id, tag:'5'},
        {english: '300', spanish: 'trescientos', category_id:numbers_category.id, tag:'5'},
        {english: '400', spanish: 'cuatrocientos', category_id:numbers_category.id, tag:'5'},
        {english: '500', spanish: 'quinientos', category_id:numbers_category.id, tag:'5'},
        {english: '600', spanish: 'seiscientos', category_id:numbers_category.id, tag:'5'},
        {english: '700', spanish: 'setecientos', category_id:numbers_category.id, tag:'5'},
        {english: '800', spanish: 'ochocientos', category_id:numbers_category.id, tag:'5'},
        {english: '900', spanish: 'novecientos', category_id:numbers_category.id, tag:'5'},
        {english: '1 000', spanish: 'mil', category_id:numbers_category.id, tag:'6'},
        {english: '1 011', spanish: 'mil once', category_id:numbers_category.id, tag:'6'},
        {english: '1 111', spanish: 'mil ciento once', category_id:numbers_category.id, tag:'6'},
        {english: '2 000', spanish: 'dos mil', category_id:numbers_category.id, tag:'6'},
        {english: '3 000 003', spanish: 'tres millones tres', category_id:numbers_category.id, tag:'6'},

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
        {english: 'Canada', spanish: 'Canadá', category_id:vocabulary_category.id},
        {english: 'Canadian', spanish: 'canadiense', category_id:vocabulary_category.id},
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
        {english: 'Romania', spanish: 'Rumania', category_id:vocabulary_category.id},
        {english: 'Romanian', spanish: 'rumano', category_id:vocabulary_category.id},
        {english: 'road', spanish: 'camino', category_id:vocabulary_category.id},
        # S
        # T
        # U
        # V
        {english: 'Vietnamese', spanish: 'vietnamita', category_id:vocabulary_category.id},
        # W
        {english: 'wine', spanish: '', category_id:vocabulary_category.id},
        # X
        # Y
        {english: 'year', spanish: 'el año', category_id:vocabulary_category.id}
        # Z
    ])
