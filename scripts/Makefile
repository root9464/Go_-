
build:
	go build -gcflags "-S" main.go

compile:
	go tool compile -o bin/main.o -S main.go

asm:
	powershell -Command "New-Item -Path '../bin' -ItemType Directory -Force; go tool compile -S -N -l -o ../bin/main.o ../main.go | ForEach-Object { $$PSItem -replace '\s+\(.*?go:\d+\)\s+', ' ' } | Select-String -Pattern '^[ \t]*0x[0-9a-f]+.*[A-Z]+.*$$' | Out-File ../main.s"

run:
	go run main.go
