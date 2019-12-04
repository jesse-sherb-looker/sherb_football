explore: rid {}

view: rid {
  derived_table: {
    sql: SELECT 1 ;;
    }

    parameter: question {
      type: unquoted
      allowed_value: {
        label: "In an unfamiliar city, for a moment I thought I had it, but then it was stolen right away from me."
        value: "1"
      }
      allowed_value: {
        label: "I was first to crack, but last to break. This is the same today as it was then."
        value: "2"
      }
      allowed_value: {
        label: "When your second stop becomes your first stop when the first stop can’t be stopped at. But this stop ends up being your favorite stop!"
        value: "3"
      }
      allowed_value: {
        label: "The first time around, I tried to give when someone didn’t want giving. The second time around, you made me do the giving, perhaps also to your benefit."
        value: "4"
      }
      allowed_value: {
        label: "What is 36 inches tall and more fearless than you?"
        value: "5"
      }
      allowed_value: {
        label: "Tied down, sad and confused. The most special time of all. "
        value: "6"
      }
      allowed_value: {
        label: "“Huh?” Did I just hear that? Yay. This street I’ll remember forever."
        value: "7"
      }
    }

    parameter: answer {
      type: string
    }

    dimension: correct {
      type: number
      sql:

      CASE WHEN {{ question._parameter_value }} = 1 AND {{ answer._parameter_value }} IN ('baseball','philadelphia','philly','phillies','baseball game')
          THEN 1
          WHEN {{ question._parameter_value }} = 2 AND {{ answer._parameter_value }} IN ('babe','governors island','gareth emery')
          THEN 2
          WHEN {{ question._parameter_value }} = 3 AND {{ answer._parameter_value }} IN ('the city bakery','croissant','walking tour','cretzel')
          THEN 3
          WHEN {{ question._parameter_value }} = 4 AND {{ answer._parameter_value }} IN ('homeless','dc','washington dc','homeless man')
          THEN 4
          WHEN {{ question._parameter_value }} = 5 AND {{ answer._parameter_value }} IN ('little girl','kid','little kid','disney','disney world')
          THEN 5
          WHEN {{ question._parameter_value }} = 6 AND {{ answer._parameter_value }} IN ('mason','engagement','dining table','hudson valley')
          THEN 6
          WHEN {{ question._parameter_value }} = 7 AND {{ answer._parameter_value }} IN ('mott','girlfriend','girl friend','mott street','mott st')
          THEN 7
          ELSE 8
          END
      ;;
      html:
      {% if {{value}} == 1 %} <img src="https://www.evernote.com/l/An_Q5lQJYmpHGqvHLVcJoV2rJiIOEsYZSncB/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 2 %} <img src="https://www.evernote.com/l/An8P5kGEYW5A_phzGZYri-L9rrsepX6nTOEB/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 3 %} <img src="https://www.evernote.com/l/An8lFunp5ExFkbiOWFhyYfvNW5T-JHqiKX4B/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 4 %} <img src="https://www.evernote.com/l/An-KOBJrvrhHMb-Dut3xCzNR79yo2uHJ98gB/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 5 %} <img src="https://www.evernote.com/l/An-TWbY_H9ZDN6YyUCAuyaAamnnM0tmwP-MB/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 6 %} <img src="https://www.evernote.com/l/An-nijN-t_FK5Ycj2whA68fZNrQvNTeQoakB/image.jpg" height=100% width="auto">
      {% elsif {{value}} == 7 %} <img src="https://www.evernote.com/l/An-V9cE9zZZF-qol-tlHrsAXneoBgLQDjxgB/image.jpg" height=100% width="auto">
      {% else %} <font size="50"><strong>Sorry! Try again!</strong></font>
      {% endif %}


      ;;
    }






  }
