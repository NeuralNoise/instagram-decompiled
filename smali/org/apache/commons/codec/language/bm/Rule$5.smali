.class final Lorg/apache/commons/codec/language/bm/Rule$5;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lorg/apache/commons/codec/language/bm/Rule$RPattern;


# instance fields
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$5;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 435
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$5;->val$content:Ljava/lang/String;

    #calls: Lorg/apache/commons/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    invoke-static {p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
