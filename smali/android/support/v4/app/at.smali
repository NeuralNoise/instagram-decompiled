.class Landroid/support/v4/app/at;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/aq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ao;)Landroid/app/Notification;
    .locals 13
    .parameter

    .prologue
    .line 108
    iget-object v0, p1, Landroid/support/v4/app/ao;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/ao;->r:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/ao;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ao;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ao;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/ao;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/ao;->i:I

    iget-object v7, p1, Landroid/support/v4/app/ao;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/ao;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/ao;->g:Landroid/graphics/Bitmap;

    iget v10, p1, Landroid/support/v4/app/ao;->n:I

    iget v11, p1, Landroid/support/v4/app/ao;->o:I

    iget-boolean v12, p1, Landroid/support/v4/app/ao;->p:Z

    invoke-static/range {v0 .. v12}, Landroid/support/v4/app/ax;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
