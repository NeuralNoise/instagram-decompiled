.class Lcom/a/c/d;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lcom/a/c/c;


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const-string v0, "annotation type"

    invoke-static {p1, v0}, Lcom/a/a/a/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/c/d;->a:Ljava/lang/Class;

    .line 460
    iput-object p2, p0, Lcom/a/c/d;->b:Ljava/lang/annotation/Annotation;

    .line 461
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 480
    instance-of v0, p1, Lcom/a/c/d;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 485
    .end local p1
    :goto_0
    return v0

    .line 484
    .restart local p1
    :cond_0
    check-cast p1, Lcom/a/c/d;

    .line 485
    .end local p1
    iget-object v0, p0, Lcom/a/c/d;->a:Ljava/lang/Class;

    iget-object v1, p1, Lcom/a/c/d;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/a/c/d;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/c/d;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
