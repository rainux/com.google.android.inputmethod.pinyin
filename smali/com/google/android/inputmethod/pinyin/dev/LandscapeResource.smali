.class public Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;
.super Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;
.source "LandscapeResource.java"


# static fields
.field private static final LEFT_COLUMN_WIDTH:F = 0.14584f

.field private static final RIGHT_COLUMN_WIDTH:F = 0.21354f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;->init(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;->mFloats:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 28
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;->mFloats:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3e00

    aput v2, v0, v1

    .line 29
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;->mFloats:[F

    const/4 v1, 0x6

    const v2, 0x3dcccccd

    aput v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;->mFloats:[F

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;->mFloats:[F

    aget v2, v2, v3

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 31
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "default.landscape"

    return-object v0
.end method
