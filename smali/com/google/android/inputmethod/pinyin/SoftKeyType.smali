.class Lcom/google/android/inputmethod/pinyin/SoftKeyType;
.super Ljava/lang/Object;
.source "SkbTemplate.java"


# static fields
.field public static final KEYTYPE_ID_NORMAL_KEY:I


# instance fields
.field public mColor:I

.field public mColorBalloon:I

.field public mColorHl:I

.field public mKeyBg:Landroid/graphics/drawable/Drawable;

.field public mKeyHlBg:Landroid/graphics/drawable/Drawable;

.field public mKeyTypeId:I


# direct methods
.method constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyTypeId:I

    .line 224
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 226
    return-void
.end method


# virtual methods
.method public setColors(III)V
    .registers 4
    .parameter "color"
    .parameter "colorHl"
    .parameter "colorBalloon"

    .prologue
    .line 229
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColor:I

    .line 230
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorHl:I

    .line 231
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->mColorBalloon:I

    .line 232
    return-void
.end method
