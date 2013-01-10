# Imperative
days = %w(Mon Tue Wed)
days << "Thu"
days += ["Fri", "Sat", "Sun"]
days   # ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"] 

# Functional
days = %w(Mon Tue Wed)
all_days = days + ["Thu"] + ["Fri", "Sat", "Sun"]
all_days # ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

