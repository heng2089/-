import calendar

def display_calendar(year, month):
    cal = calendar.monthcalendar(year, month)

    # 打印月份和年份
    print(calendar.month_name[month], year)
    print("---------------------------")

    # 打印星期几的标题
    print("Mon  Tue  Wed  Thu  Fri  Sat  Sun")

    # 打印日历
    for week in cal:
        for day in week:
            if day == 0:
                print("     ", end=" ")
            else:
                print(f"{day:2d}", end="  ")
        print()

def main():
    year = int(input("Enter the year: "))
    month = int(input("Enter the month: "))

    display_calendar(year, month)

if __name__ == "__main__":
    main()
