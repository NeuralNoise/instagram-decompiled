.class public Lcom/facebook/b/a/c;
.super Ljava/lang/Object;
.source "BaseFbBroadcastManager.java"

# interfaces
.implements Lcom/facebook/b/a/i;


# instance fields
.field final synthetic a:Lcom/facebook/b/a/a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/content/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/IntentFilter;

.field private d:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/facebook/b/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/b/a/c;->a:Lcom/facebook/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {}, Lcom/a/a/b/fx;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/a/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/content/b;)Lcom/facebook/b/a/i;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/b/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object p0
.end method

.method public a()Lcom/facebook/b/a/j;
    .locals 5

    .prologue
    .line 157
    new-instance v0, Lcom/facebook/b/a/f;

    iget-object v1, p0, Lcom/facebook/b/a/c;->a:Lcom/facebook/b/a/a;

    iget-object v2, p0, Lcom/facebook/b/a/c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/b/a/c;->c:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/facebook/b/a/c;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/b/a/f;-><init>(Lcom/facebook/b/a/a;Ljava/util/Map;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    return-object v0
.end method
