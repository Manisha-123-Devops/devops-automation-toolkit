import psutil

cpu_usage = psutil.cpu_percent(interval=1)

if cpu_usage > 80:
    print("High CPU usage detected:", cpu_usage)
else:
    print("CPU usage normal:", cpu_usage)
