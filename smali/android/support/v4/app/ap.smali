.class public Landroid/support/v4/app/ap;
.super Landroid/support/v4/app/av;
.source "NotificationCompat.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0}, Landroid/support/v4/app/av;-><init>()V

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ap;->a:Ljava/util/ArrayList;

    .line 728
    return-void
.end method
