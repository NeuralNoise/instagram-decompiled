.class Landroid/support/v4/app/t;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/r;


# direct methods
.method constructor <init>(Landroid/support/v4/app/r;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Landroid/support/v4/app/t;->a:Landroid/support/v4/app/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 513
    iget-object v0, p0, Landroid/support/v4/app/t;->a:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/t;->a:Landroid/support/v4/app/r;

    iget-object v1, v1, Landroid/support/v4/app/r;->o:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->b()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/r;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 514
    return-void
.end method
