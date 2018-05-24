Class Stuff {
[int] $price
[int] SetRandomPrice ()
{
$rand = Get-Random -Maximum 101 -Minimum 1
$this.Price = $rand
return $rand
}
}
