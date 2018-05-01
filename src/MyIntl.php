<?php declare(strict_types=1);

namespace Trinet\DockerInfection;

use Locale;

class MyIntl
{
    public static function getLocale(): string
    {
        return Locale::getDefault();
    }
}
