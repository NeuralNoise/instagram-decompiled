.class final Lcom/a/a/b/ex;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/a/a/a/g;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/a/a/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/a/a/b/ex;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/a/a/b/ex;->b:Lcom/a/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/a/a/b/ex;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/a/a/b/ex;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/a/a/b/ex;->b:Lcom/a/a/a/g;

    invoke-interface {v1, v0}, Lcom/a/a/a/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/a/a/b/ex;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 787
    return-void
.end method
