package demo

import "testing"

func TestPrints(t *testing.T) {
	prints(true)
	prints(false)
}
func TestPrints2_1(t *testing.T) {
	prints2(true)
	prints2(false)
}

func TestPrints3_1(t *testing.T) {
	prints3(false)
}
