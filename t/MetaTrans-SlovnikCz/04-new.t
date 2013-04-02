# Pragmas.
use strict;
use warnings;

# Modules.
use MetaTrans::SlovnikCz;
use Test::More 'tests' => 15;
use Test::NoWarnings;

# Test.
my $obj = MetaTrans::SlovnikCz->new;
isa_ok($obj, 'MetaTrans::SlovnikCz');

# Test.
my $ret = $obj->host_server;
is($ret, 'www.slovnik.cz', 'URI of web service.');

# Test.
my @ret = $obj->get_all_src_lang_codes;
is_deeply(
	\@ret,
	[
		'cze',
		'eng',
		'epo',
		'fre',
		'ger',
		'ita',
		'lat',
		'pol',
		'rus',
		'slo',
		'spa',
	],
	'Translation languages.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('cze');
is_deeply(
	\@ret,
	['eng', 'epo', 'fre', 'ger', 'ita', 'lat', 'pol', 'rus', 'spa'],
	'Translation direction cze -> eng, epo, fre, ger, ita, lat, pol, '.
		'rus, spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('eng');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction eng -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('epo');
is_deeply(
	\@ret,
	['cze', 'slo'],
	'Translation direction epo -> cze, slo.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('fre');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction fre -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ger');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction ger -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ita');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction ita -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('lat');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction lat -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('pol');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction pol -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('rus');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction rus -> cze.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('slo');
is_deeply(
	\@ret,
	['epo'],
	'Translation direction slo -> epo.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('spa');
is_deeply(
	\@ret,
	['cze'],
	'Translation direction spa -> cze.',
);
