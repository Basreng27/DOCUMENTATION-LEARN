<?php

namespace App\Data;

class Bar
{
    // depend atau tergantung pada Foo
    // mengambil dari class Foo.php
    public Foo $foo;

    public function __construct(Foo $foo)
    {
        // mendeklarasikan $foo dan pastingakn di passing pada parameter dengan classnya
        $this->foo = $foo;
    }

    // : string = hasil returnnya harus string
    public function bar(): string
    {
        // mengembalikan nilai dari fungtion foo yang ada pada class Foo
        return $this->foo->foo() . ' and Bar';
    }
}
