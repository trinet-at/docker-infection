<?php declare(strict_types=1);

namespace TrinetTest\DockerInfection;

use PHPUnit\Framework\TestCase;
use Trinet\DockerInfection\MyIntl;

class MyIntlTest extends TestCase
{

    public function testGetLocale()
    {
        $output = MyIntl::getLocale();

        $this->assertInternalType('string', $output);
    }
}
