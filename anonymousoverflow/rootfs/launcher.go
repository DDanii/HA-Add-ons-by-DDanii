package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
)

func main() {
	// Step 1: Read JSON file
	data, err := ioutil.ReadFile("/data/options.json")
	if err != nil {
		fmt.Printf("Error reading JSON file: %v\n", err)
		os.Exit(1)
	}

	// Step 2: Unmarshal JSON into a map
	var envVars map[string]string
	if err := json.Unmarshal(data, &envVars); err != nil {
		fmt.Printf("Error parsing JSON: %v\n", err)
		os.Exit(1)
	}

	// Step 3: Set environment variables
	for key, value := range envVars {
		if err := os.Setenv(key, value); err != nil {
			fmt.Printf("Error setting env var %s: %v\n", key, err)
		}
	}

	// Step 4: Run the second Go app
	// Change "app2" to your compiled binary name or source file (e.g. "./app2")
	cmd := exec.Command("/anonymousoverflow")

	// Inherit std streams so you can see output
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Stdin = os.Stdin

	// Inherit the modified environment
	cmd.Env = os.Environ()

	// Run the command
	if err := cmd.Run(); err != nil {
		fmt.Printf("Error running second app: %v\n", err)
		os.Exit(1)
	}
}

