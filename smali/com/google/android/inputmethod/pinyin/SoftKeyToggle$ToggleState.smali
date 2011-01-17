.class public Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
.super Ljava/lang/Object;
.source "SoftKeyToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToggleState"
.end annotation


# instance fields
.field private mIdAndFlags:I

.field public mKeyCode:I

.field public mKeyIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field public mKeyLabel:Ljava/lang/String;

.field public mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

.field public mNextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    return v0
.end method


# virtual methods
.method public setStateFlags(ZZ)V
    .registers 5
    .parameter "repeat"
    .parameter "balloon"

    .prologue
    .line 270
    if-eqz p1, :cond_13

    .line 271
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 276
    :goto_9
    if-eqz p2, :cond_1c

    .line 277
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 281
    :goto_12
    return-void

    .line 273
    :cond_13
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    goto :goto_9

    .line 279
    :cond_1c
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    goto :goto_12
.end method

.method public setStateId(I)V
    .registers 4
    .parameter "stateId"

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 267
    return-void
.end method
