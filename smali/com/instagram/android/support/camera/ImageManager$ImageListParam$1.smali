.class final Lcom/instagram/android/support/camera/ImageManager$ImageListParam$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;
    .locals 2
    .parameter "in"

    .prologue
    .line 112
    new-instance v0, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;Lcom/instagram/android/support/camera/ImageManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/instagram/android/support/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p1, [Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/instagram/android/support/camera/ImageManager$ImageListParam$1;->newArray(I)[Lcom/instagram/android/support/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method
