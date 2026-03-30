##' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
    packageStartupMessage(paste("\nThis is 'rols' version",
                                packageVersion("rols"), "\n"))
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.24")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
