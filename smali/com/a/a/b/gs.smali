.class Lcom/a/a/b/gs;
.super Lcom/a/a/b/dy;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/dy",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final d:Lcom/a/a/b/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/gq",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/gq;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/gq",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, Lcom/a/a/b/gq;->a(Lcom/a/a/b/gq;)[Lcom/a/a/b/gt;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/b/gq;->b(Lcom/a/a/b/gq;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/dy;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, Lcom/a/a/b/gs;->d:Lcom/a/a/b/gq;

    .line 231
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/a/a/b/gs;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 238
    .local p0, this:Lcom/a/a/b/gs;,"Lcom/a/a/b/gs<TK;TV;>;"
    iget-object v0, p0, Lcom/a/a/b/gs;->d:Lcom/a/a/b/gq;

    invoke-virtual {v0, p1}, Lcom/a/a/b/gq;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
