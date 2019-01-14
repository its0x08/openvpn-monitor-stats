from time import sleep
def f():
	try:
		a = []
		b = ['OpenVPN CLIENT LIST', 'Updated,Wed Jan  9 01:31:16 2019', 'Common Name,Real Address,Bytes Received,Bytes Sent,Connected Since', 'ROUTING TABLE', 'Virtual Address,Common Name,Real Address,Last Ref', 'GLOBAL STATS', 'Max bcast/mcast queue length,0', 'END']
		
		for line in open("/etc/openvpn/log.log", "r"):
		#for line in open("./stat.log", "r"):
			line = line.strip()
			if line not in b:
				line = line.split(",")
				if len(line) == 5:
					line = "<tr><td>%s</td><td>%s</td><td>%s Kb</td><td>%s Kb</td></tr>"%(line[0], line[1], int(line[2])/1000, int(line[3])/1000)
					a.append(line)

		a = "\n".join(a)
		f = open("./stats.txt", "w")
		f.write(a)
		f.close()
	except Exception as e:
		pass

if __name__=='__main__':
	while True:
		try:
			f()
			sleep(10)
		except Exception as e:
			pass
