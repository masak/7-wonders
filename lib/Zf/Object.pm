use v6;

class Zf::Object;

method new(*%_) {
    die "Unknown attribute '$_' for {self.WHAT.perl}"
        unless $_ eq any(self.^attributes(:local)>>.name>>.substr(2))
        for %_.keys;

    self.bless(self.CREATE, |%_);
}
