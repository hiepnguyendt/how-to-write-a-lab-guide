Write-Output "Building Share Note..."
	
docker build -t sharenote .
	
Write-Output "Build completed!"
	
Write-Output "Running Application..."
	
docker run -p 8080:8080 sharenote