package Git::PurePerl::Actor;
use Mouse;
use MouseX::StrictConstructor;
use Mouse::Util::TypeConstraints;
use namespace::autoclean;

has 'name'  => ( is => 'ro', isa => 'Str', required => 1 );
has 'email' => ( is => 'ro', isa => 'Str', required => 1 );

__PACKAGE__->meta->make_immutable;

1;
