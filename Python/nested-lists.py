'''
Link: https://www.hackerrank.com/challenges/nested-list/problem?isFullScreen=true

Given the names and grades for each student in a class of N students, store them in a nested list and print the name(s) of any student(s) having the second lowest grade.

Note: If there are multiple students with the second lowest grade, order their names alphabetically and print each name on a new line.

Input Format

The first line contains an integer,N, the number of students.
The 2N subsequent lines describe each student over  lines.
- The first line contains a student's name.
- The second line contains their grade.

Output Format

Print the name(s) of any student(s) having the second lowest grade in. If there are multiple students, order their names alphabetically and print each one on a new line.

'''

if __name__ == '__main__':
    
    students = []
    scores = []
    for _ in range(int(raw_input())):
        name = raw_input()
        score = float(raw_input())
        students.append([name,score])
        scores.append(score)
        
    students = sorted(students, key = lambda x : x[1])
      
    lowestScore = students[0][1]
    secondLowestScore = 0
    
    n = len(students)
    
    for i in range (0, n):
        if students[i][1] > lowestScore:
            secondLowestScore = students[i][1]
            break;
   
    
    answer = []
    
    for student in students:
        if student[1] == secondLowestScore:
            answer.append(student[0])
    
    for student in sorted(answer): 
        print(student)
        
