package Git::PurePerl::NewDirectoryEntry;
use Mouse;
use MouseX::StrictConstructor;
use Mouse::Util::TypeConstraints;
use namespace::autoclean;

has 'mode'     => ( is => 'ro', isa => 'Str',           required => 1 );
has 'filename' => ( is => 'ro', isa => 'Str',           required => 1 );
has 'sha1'     => ( is => 'ro', isa => 'Str',           required => 1 );

__PACKAGE__->meta->make_immutable;

1;
