$(document).ready(function(){
	$("#searchform").submit(function(){
		$.get(this.action, $("#searchform").serialize(), null, "script")
		return false
	})
})
