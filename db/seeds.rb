# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

greetings_category = Category.where(name: 'Greetings', description: 'Greetings').first_or_create

questions_category = Category.where(name: 'Questions', description: 'Questions').first_or_create

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

        {english: 'how', spanish: 'cómo', category_id:questions_category.id},
        {english: 'what', spanish: 'qué', category_id:questions_category.id},
        {english: 'how long / how much / how many', spanish: 'cuánto', category_id:questions_category.id},
        {english: 'when', spanish: 'cuándo', category_id:questions_category.id},
        {english: 'where (in or at what place?)', spanish: 'dónde', category_id:questions_category.id},
        {english: 'where (to what place?)', spanish: 'adónde', category_id:questions_category.id},
        {english: 'where (from what place?)', spanish: 'de dónde', category_id:questions_category.id},
        {english: 'which', spanish: 'cuál', category_id:questions_category.id},
        {english: 'why', spanish: 'por qué', category_id:questions_category.id},

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
        {english: '0', spanish: 'cero', category_id:numbers_category.id, tag:'1'},
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
        {english: 'add', spanish: 'sumar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'address', spanish: 'la dirección', category_id:vocabulary_category.id},
        {english: 'age', spanish: 'la edad', category_id:vocabulary_category.id},
        {english: 'allergy', spanish: 'la alergia', category_id:vocabulary_category.id},
        {english: 'answer', spanish: 'responder', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'answer (noun)', spanish: 'la respuesta', category_id:vocabulary_category.id},
        {english: 'apartment', spanish: 'el apartamento', category_id:vocabulary_category.id},
        # B
        {english: 'bill (restaurant)', spanish: 'la nota', category_id:vocabulary_category.id},
        {english: 'buy', spanish: 'comprar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'beach', spanish: 'la playa', category_id:vocabulary_category.id},
        {english: 'beer', spanish: 'la cerveza', category_id:vocabulary_category.id},
        {english: 'beautiful', spanish: 'bonito', category_id:vocabulary_category.id},
        {english: 'bike (noun)', spanish: 'la bicicleta', category_id:vocabulary_category.id},
        # C
        {english: 'Canada', spanish: 'Canadá', category_id:vocabulary_category.id},
        {english: 'Canadian', spanish: 'canadiense', category_id:vocabulary_category.id},
        {english: 'closed', spanish: 'cerrado', category_id:vocabulary_category.id},
        {english: 'cold', spanish: 'frío', category_id:vocabulary_category.id},
        {english: 'city', spanish: 'ciudad', category_id:vocabulary_category.id},
        # D
        {english: 'drink (noun)', spanish: 'la bebida', category_id:vocabulary_category.id},
        {english: 'drink', spanish: 'beber', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'death', spanish: 'muerte', category_id:vocabulary_category.id},
        # E
        {english: 'eat', spanish: 'comer', category_id:vocabulary_category.id},
        # F
        {english: 'friend', spanish: 'el amigo', category_id:vocabulary_category.id},
        {english: 'feminine', spanish: 'femenino', category_id:vocabulary_category.id},
        {english: 'for', spanish: 'para', category_id:vocabulary_category.id},
        {english: 'food', spanish: 'la comida', category_id:vocabulary_category.id},
        # G
        {english: 'go', spanish: 'ir', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'go out', spanish: 'salir', category_id:vocabulary_category.id, english_prefix: 'to'},
        # H
        {english: 'help', spanish: 'ayudar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'here', spanish: 'aquí', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'hot', spanish: 'caliente', category_id:vocabulary_category.id},
        {english: 'hike', spanish: 'ir de excursión', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'house', spanish: 'casa', category_id:vocabulary_category.id, english_prefix: 'to'},
        # I
        {english: 'invite', spanish: 'invitar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'invite (noun)', spanish: 'la invitación', category_id:vocabulary_category.id},
        # J
        {english: 'jump', spanish: 'saltar', category_id:vocabulary_category.id, english_prefix: 'to'},
        # K
        {english: 'key', spanish: 'la llave', category_id:vocabulary_category.id},
        # L
        {english: 'like', spanish: 'gustar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'love', spanish: 'querer', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'left (direction)', spanish: 'la izquierda', category_id:vocabulary_category.id},
        # M
        {english: 'masculine', spanish: 'masculino', category_id:vocabulary_category.id},
        {english: 'mountain', spanish: 'la montaña', category_id:vocabulary_category.id},
        # N
        {english: 'noun', spanish: 'el nombre', category_id:vocabulary_category.id},
        # O
        {english: 'open', spanish: 'abrir', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'open (adjective)', spanish: 'abierto', category_id:vocabulary_category.id},
        {english: 'on', spanish: 'sobre', category_id:vocabulary_category.id},
        {english: 'office', spanish: 'la oficina', category_id:vocabulary_category.id},
        # P
        {english: 'practice', spanish: 'practicar', category_id:vocabulary_category.id},
        {english: 'place', spanish: 'el lugar', category_id:vocabulary_category.id},
        {english: 'person', spanish: 'la persona', category_id:vocabulary_category.id},
        {english: 'purchase', spanish: 'la compra', category_id:vocabulary_category.id},
        # Q
        {english: 'question', spanish: 'la pregunta', category_id:vocabulary_category.id},
        # R
        {english: 'Romania', spanish: 'Rumania', category_id:vocabulary_category.id},
        {english: 'Romanian', spanish: 'rumano', category_id:vocabulary_category.id},
        {english: 'road', spanish: 'camino', category_id:vocabulary_category.id},
        {english: 'right (direction)', spanish: 'la derecha', category_id:vocabulary_category.id},
        # S
        {english: 'store', spanish: 'la tienda', category_id:vocabulary_category.id},
        {english: 'start', spanish: 'empezar', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'salt', spanish: 'la sal', category_id:vocabulary_category.id},
        {english: 'snow', spanish: 'la nieve', category_id:vocabulary_category.id},
        # T
        {english: 'then', spanish: 'entonces', category_id:vocabulary_category.id},
        {english: 'table', spanish: 'la mesa', category_id:vocabulary_category.id},
        {english: 'turn off', spanish: 'apagar', category_id:vocabulary_category.id, english_prefix: 'to'},
        # U
        {english: 'under', spanish: 'bajo', category_id:vocabulary_category.id},
        {english: 'understand', spanish: 'entender', category_id:vocabulary_category.id, english_prefix: 'to'},
        {english: 'ugly', spanish: 'feo', category_id:vocabulary_category.id},
        # V
        {english: 'Vietnamese', spanish: 'vietnamita', category_id:vocabulary_category.id},
        {english: 'until', spanish: 'hasta', category_id:vocabulary_category.id},
        # W
        {english: 'wine', spanish: 'el vino', category_id:vocabulary_category.id},
        {english: 'word', spanish: 'palabra', category_id:vocabulary_category.id},
        {english: 'with', spanish: 'con', category_id:vocabulary_category.id},
        {english: 'without', spanish: 'sin', category_id:vocabulary_category.id},
        # X
        {english: 'xenophobia', spanish: 'xenofobia', category_id:vocabulary_category.id},
        # Y
        {english: 'year', spanish: 'el año', category_id:vocabulary_category.id},
        {english: 'yesterday', spanish: 'ayer', category_id:vocabulary_category.id},
        # Z
        {english: 'zone', spanish: 'la zona', category_id:vocabulary_category.id}
    ])
