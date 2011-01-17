.class Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
.super Ljava/lang/Object;
.source "XmlKeyboardLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyCommonAttributes"
.end annotation


# instance fields
.field balloon:Z

.field keyHeight:F

.field keyType:I

.field keyWidth:F

.field mXrp:Landroid/content/res/XmlResourceParser;

.field repeat:Z

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .parameter
    .parameter "xrp"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    .line 306
    return-void
.end method


# virtual methods
.method getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z
    .registers 7
    .parameter "defAttr"

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "key_type"

    iget v3, p1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->access$000(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    .line 311
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "width"

    iget v3, p1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->access$100(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    .line 312
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "height"

    iget v3, p1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->access$100(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    .line 313
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "repeat"

    iget-boolean v3, p1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->access$200(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    .line 314
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->this$0:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "balloon"

    iget-boolean v3, p1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->access$200(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    .line 315
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    if-ltz v0, :cond_57

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_57

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_59

    .line 316
    :cond_57
    const/4 v0, 0x0

    .line 318
    :goto_58
    return v0

    :cond_59
    const/4 v0, 0x1

    goto :goto_58
.end method
