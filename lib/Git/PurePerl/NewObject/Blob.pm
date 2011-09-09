package Git::PurePerl::NewObject::Blob;
use Mouse;
use MouseX::StrictConstructor;
use Mouse::Util::TypeConstraints;
use namespace::autoclean;

extends 'Git::PurePerl::NewObject';

has 'kind' =>
    ( is => 'ro', isa => 'ObjectKind', required => 1, default => 'blob' );

__PACKAGE__->meta->make_immutable;

1;
