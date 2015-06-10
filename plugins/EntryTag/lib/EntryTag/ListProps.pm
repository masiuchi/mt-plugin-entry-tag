package EntryTag::ListProps;
use strict;
use warnings;

sub tag {
    my ( $prop, $obj, $app ) = @_;

    my $tag_delim = chr( $app->user->entry_prefs->{tag_delim} );
    require MT::Tag;
    my $tags = MT::Tag->join( $tag_delim, $obj->tags );

    return ( defined $tags && $tags ne '' ) ? $tags : '-';
}

1;
