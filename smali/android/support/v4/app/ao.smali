.class public Landroid/support/v4/app/ao;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Landroid/support/v4/app/av;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/al;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ao;->q:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    .line 200
    iput-object p1, p0, Landroid/support/v4/app/ao;->a:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 204
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ao;->j:I

    .line 206
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 499
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Landroid/support/v4/app/ak;->a()Landroid/support/v4/app/aq;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/ao;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/ao;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 242
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/ao;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 214
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ao;
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/v4/app/ao;->d:Landroid/app/PendingIntent;

    .line 334
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Landroid/support/v4/app/ao;->g:Landroid/graphics/Bitmap;

    .line 393
    return-object p0
.end method

.method public a(Landroid/support/v4/app/av;)Landroid/support/v4/app/ao;
    .locals 1
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v4/app/ao;->l:Landroid/support/v4/app/av;

    if-eq v0, p1, :cond_0

    .line 541
    iput-object p1, p0, Landroid/support/v4/app/ao;->l:Landroid/support/v4/app/av;

    .line 542
    iget-object v0, p0, Landroid/support/v4/app/ao;->l:Landroid/support/v4/app/av;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/support/v4/app/ao;->l:Landroid/support/v4/app/av;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/av;->a(Landroid/support/v4/app/ao;)V

    .line 546
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v4/app/ao;->b:Ljava/lang/CharSequence;

    .line 266
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/ao;
    .locals 1
    .parameter

    .prologue
    .line 475
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ao;->a(IZ)V

    .line 476
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/ao;
    .locals 0
    .parameter

    .prologue
    .line 293
    iput p1, p0, Landroid/support/v4/app/ao;->i:I

    .line 294
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Landroid/support/v4/app/ao;->c:Ljava/lang/CharSequence;

    .line 274
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;
    .locals 1
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 374
    return-object p0
.end method
