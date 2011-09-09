package Git::PurePerl::Config;
use Mouse;
use MouseX::StrictConstructor;
use Mouse::Util::TypeConstraints;
use namespace::autoclean;

extends 'Config::GitLike';

has 'confname' => ( is=>'ro', default => "gitconfig" );
has 'git'       => ( is => 'ro', isa => 'Git::PurePerl', required => 1, weak_ref => 1 );

override dir_file => sub {
    my $self = shift;
    return $self->git->gitdir->file("config");
};

1;
