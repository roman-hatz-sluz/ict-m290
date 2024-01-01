def getGradeText(grade):
    # Round the grade to the nearest 0.25
    rounded_grade = round(float(grade) * 4) / 4

    # Define a dictionary for entertaining grade descriptions in German
    grade_descriptions = {
        6.00: "Sehr Gut - Fantastische Arbeit!",
        5.75: "Hervorragend - Unglaublich gut gemacht! Ihre Leistung ist beeindruckend!",
        5.50: "Hervorragend - Bemerkenswert! Sie zeigen grosses Potenzial!",
        5.25: "Gut bis sehr gut - Wirklich toll gemacht!",
        5.00: "Gut - Tolle Arbeit!",
        4.75: "Okay bis gut - Gute Arbeit! Bleiben Sie dran und Sie werden noch besser!",
        4.50: "Okay - Geschafft, aber mehr ist immer besser! Sie können noch mehr erreichen! ",
        4.25: "Genügend - Solide Leistung, aber da geht noch mehr",
        4.00: "Genügend - Sie haben es geschafft, aber da geht noch mehr ",
        3.75: "Ungenügend - Nahe dran, nicht ganz auf der Ziellinie ",
        3.50: "Ungenügend - Das geht besser! Lassen Sie uns mehr zusammenarbeiten, damit es besser läuft",
        3.25: "Schwach - Sie haben das Potenzial, dich zu steigern! ",
        3.00: "Schwach - Da geht noch mehr! Gemeinsam werden wir besser! ",
    }

    # Check if the rounded grade is below 3
    if rounded_grade < 3:
        description = (
            "Unglaublich schlecht - Das war nichts, aber beim nächsten Mal klappt's!"
        )
    elif rounded_grade >= 3 and rounded_grade <= 6:
        description = grade_descriptions.get(
            rounded_grade, "Ungültige Note - Hier stimmt etwas nicht."
        )
    else:
        description = "Ungültige Note - Hier stimmt etwas nicht."

   
    return description
