% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Terms.R
\name{Terms}
\alias{Terms}
\alias{Term}
\alias{Terms,character}
\alias{Terms,Ontology}
\alias{termLinks}
\alias{termLinks,Term}
\alias{children}
\alias{parents}
\alias{ancestors}
\alias{descendants}
\alias{termSynonym}
\alias{termSynonym,Term}
\alias{termSynonym,Terms}
\alias{isObsolete}
\alias{isObsolete,Term}
\alias{isObsolete,Terms}
\alias{isRoot}
\alias{isRoot,Term}
\alias{isRoot,Terms}
\alias{termLabel}
\alias{termLabel,Term}
\alias{termLabel,Terms}
\alias{termId}
\alias{termId,Term}
\alias{termId,Terms}
\alias{termPrefix}
\alias{termPrefix,Term}
\alias{termPrefix,Terms}
\alias{termDesc}
\alias{termDesc,Term}
\alias{termDesc,Terms}
\alias{termOntology}
\alias{termOntology,Term}
\alias{termOntology,Terms}
\alias{termNamespace}
\alias{termNamespace,Term}
\alias{termNamespace,Terms}
\alias{Terms,character-method}
\alias{Terms,Ontology-method}
\alias{Term,character-method}
\alias{Term,Ontology-method}
\alias{show,Term-method}
\alias{show,Terms-method}
\alias{termSynonym,Term-method}
\alias{termSynonym,Terms-method}
\alias{isObsolete,Term-method}
\alias{isObsolete,Terms-method}
\alias{isRoot,Term-method}
\alias{isRoot,Terms-method}
\alias{termLabel,Term-method}
\alias{termLabel,Terms-method}
\alias{termId,Term-method}
\alias{termId,Terms-method}
\alias{termLinks,Term-method}
\alias{termPrefix,Term-method}
\alias{termPrefix,Terms-method}
\alias{termDesc,Term-method}
\alias{termDesc,Terms-method}
\alias{termOntology,Term-method}
\alias{termOntology,Terms-method}
\alias{termNamespace,Term-method}
\alias{termNamespace,Terms-method}
\alias{length,Terms-method}
\alias{unique,Terms-method}
\alias{[,Terms-method}
\alias{[[,Terms-method}
\alias{lapply,Terms-method}
\alias{as.Term.data.frame}
\alias{as.Terms.data.frame}
\title{Ontology Terms}
\usage{
\S4method{Terms}{character}(object, pagesize = 1000, obsolete = NULL)

\S4method{Terms}{Ontology}(object, pagesize = 1000, obsolete = NULL)

\S4method{Term}{character}(object, id)

\S4method{Term}{Ontology}(object, id)

children(object)

parents(object)

ancestors(object)

descendants(object)

\S4method{show}{Term}(object)

\S4method{show}{Terms}(object)

\S4method{termSynonym}{Term}(object)

\S4method{termSynonym}{Terms}(object)

\S4method{isObsolete}{Term}(object)

\S4method{isObsolete}{Terms}(object)

\S4method{isRoot}{Term}(object)

\S4method{isRoot}{Terms}(object)

\S4method{termLabel}{Term}(object)

\S4method{termLabel}{Terms}(object)

\S4method{termId}{Term}(object)

\S4method{termId}{Terms}(object)

\S4method{termLinks}{Term}(object)

\S4method{termPrefix}{Term}(object)

\S4method{termPrefix}{Terms}(object)

\S4method{termDesc}{Term}(object)

\S4method{termDesc}{Terms}(object)

\S4method{termOntology}{Term}(object)

\S4method{termOntology}{Terms}(object)

\S4method{termNamespace}{Term}(object)

\S4method{termNamespace}{Terms}(object)

\S4method{length}{Terms}(x)

\S4method{unique}{Terms}(x)

\S4method{[}{Terms}(x, i, j = "missing", drop = "missing")

\S4method{[[}{Terms}(x, i, j = "missing", drop = "missing")

\S4method{lapply}{Terms}(X, FUN, ...)

as.Term.data.frame(x)

as.Terms.data.frame(x)
}
\arguments{
\item{object}{generally an instance of class `Terms` or `Term`. In
some cases, an ontology identifier is applicable.}

\item{pagesize}{`numeric(1)`, converted to an integer, defining
the response page size. Default is 1000.}

\item{obsolete}{`NULL` or `logical(1)` defining whether obsolete
terms (`TRUE`), current terms (`FALSE`) or all (`NULL`,
default) should be returned.}

\item{id}{`character(1)` with the term's identifier.}

\item{x}{a `Terms` object.}

\item{i}{index of elecements to subset.}

\item{j}{ignored.}

\item{drop}{ignored.}

\item{X}{`Terms` object.}

\item{FUN}{a `function` to be applied to each `Term` element of
`X`.}

\item{...}{additional arguments passed to `FUN`.}
}
\description{
The `Term` class describes an ontology term. A set of terms are
instantiated as a `Terms` class.
}
\section{Contructors}{


Objects can be created using the `Term()` and `Terms()`
constructers. The latter is used with an object of class
`Ontology` or a `character` describing a valid ontology prefix to
download and instantiate all terms of an ontology of interest. The
former takes an `Ontology` object (or an ontology prefix) and
a term identifer to instantiate that specific term.

For any given `Term` object, the `children`, `parents`,
`ancestors` and `descendants` terms can be generated with the
`children()`, `parents()`, `ancestor()` and `descendants()`
function. `Terms` instances can be subset with `[` and `[[` and
iterated over with `lapply`.
}

\section{Accessors}{


- `isObsolete(object = "Term")` returns a `TRUE` if the term is
  obsolete, `FALSE` otherwise. Also works on `Terms` instances.

- `isRoot(object = "Term")` returns a `TRUE` if the term is a root
  term, `FALSE` otherwise. Also works on `Terms` instances.

- `termDesc(object = "Term")` returns a `character` with the
  term's description. Also works on `Terms` instances.

- `termId(object = "Term")` returns a `character` with the term's
  identifier. Also works on `Terms` instances.

- `termLabel(object = "Term")` returns a `character` with the
  term's label. Also works on `Terms` instances.

- `termNamespace(object = "Term")` returns a `character` with the
  term's namespace. Also works on `Terms` instances.

- `termOntology(object = "Term")` returns a `character` with the
  term's ontology (where it was retrieved from). Also works on
  `Terms` instances.

- `termPrefix(object = "Term")` returns a `character` with the
  term's (ontology) prefix (where it was retrieved from). Also
  works on `Terms` instances.

- `termSynonym(object = "Term")` returns a `character` with the
  term's synpnym(s). Also works on `Terms` instances.

- `termLinks(object = "Term")` returns a named `character` with
  hyperlink to/from the term.
}

\section{Related terms}{


- `children(object = "Term")` returns a new `Terms` instance with
   the `object`'s children or `NULL` if there are no children.

- `parents(object = "Term")` returns a new `Terms` instance with
  the `object`'s parents or `NULL` if there are no parents.

- `ancestors(object = "Term")` returns a new `Terms` instance with
  the `object`'s ancestors or `NULL` if there are no ancestors.

- `descendants(object = "Term")` returns a new `Terms` instance
  with the `object`'s descendants or `NULL` if there are no
  descendants.
}

\section{Coercion}{


- `as(x, "data.fram")` coerces a `Term` or `Terms` instance into a
  `data.frame` of length 1 (for the former) or length `length(x)`
  for the latter. The result will contain the following columns:
  id, label, description of the term(s), their ontology, whether
  they are obsolete, have children or are root node, the first
  synonym only, their iri and whether they are defining the
  ontology. Any missing value will be reported as `NA`.
}

\examples{

## Alzheimer's Disease Ontology (ADO)
(adoterms <- Terms('ado'))

## Focus on squamous epithelium
(trm <- adoterms[["UBERON:0006914"]])

## Accessors
termLabel(trm)
head(termLabel(adoterms))
termId(trm)
termDesc(trm)
termOntology(trm)
termNamespace(trm)
termSynonym(trm) ## none

## Related terms
children(trm)
descendants(trm) ## includes child

parents(trm)
ancestors(trm) ## includes parent

## A single term from an ontology
Term("ado", "ADO:0000090")
}
\references{
- OLS3 API (the OLS4 API should function identically to the OLS3):
  <http://www.ebi.ac.uk/ols4/ols3help>

- REST API for OLS: <https://www.ebi.ac.uk/ols4/swagger-ui/index.html>
}
\author{
Laurent Gatto
}
