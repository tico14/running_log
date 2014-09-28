puts "Welcome to Tristan's Patented Running Log"

runlog = File.open("running_log.txt", "a+")

info = runlog.readlines

puts "Please enter the distance you ran today in miles..."

distance = gets.to_f

puts "Please enter the amount of time you spent running today in minutes..."

time = gets.to_f

runlog.write(distance.to_s + "," + time.to_s + "\n")

i = 0
while i < info.length
	info[i] = info[i].split(",")
	i+=1
end

i = 0
sum = 0
while i < info.length
	sum = info[i][0].to_f + sum
	i+=1 
end

total1 = sum + distance.to_f

puts "Your Total Number of Miles Ran is  " + total1.to_s + " Miles"

i = 0
sum2 = 0
while i < info.length
	sum2 = info[i][1].to_f + sum2
	i+=1
end

total = sum2 + time.to_f

puts "Your Total Time Spent Running is " + total.to_s + " Minutes"

pace = total / total1 
pace.round(2)
puts "Your Average Mile Time is " + pace.to_s + " Minutes per Mile"
runlog.close
