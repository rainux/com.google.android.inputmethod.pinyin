.class public Lcom/google/android/inputmethod/pinyin/SkbPool;
.super Ljava/lang/Object;
.source "SkbPool.java"


# static fields
.field private static mInstance:Lcom/google/android/inputmethod/pinyin/SkbPool;


# instance fields
.field private mSkbTemplates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/SkbTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftKeyboards:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/SoftKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mInstance:Lcom/google/android/inputmethod/pinyin/SkbPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/google/android/inputmethod/pinyin/SkbPool;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mInstance:Lcom/google/android/inputmethod/pinyin/SkbPool;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/inputmethod/pinyin/SkbPool;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/SkbPool;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mInstance:Lcom/google/android/inputmethod/pinyin/SkbPool;

    .line 37
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mInstance:Lcom/google/android/inputmethod/pinyin/SkbPool;

    return-object v0
.end method


# virtual methods
.method public getSkbTemplate(ILandroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    .registers 7
    .parameter "skbTemplateId"
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c

    .line 50
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    .line 51
    .local v1, t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getSkbTemplateId()I

    move-result v3

    if-ne v3, p1, :cond_19

    move-object v3, v1

    .line 64
    .end local v1           #t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    :goto_18
    return-object v3

    .line 49
    .restart local v1       #t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v1           #t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    :cond_1c
    if-eqz p2, :cond_30

    .line 57
    new-instance v2, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    invoke-direct {v2, p2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, xkbl:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
    invoke-virtual {v2, p1}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->loadSkbTemplate(I)Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-result-object v1

    .line 59
    .restart local v1       #t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    if-eqz v1, :cond_30

    .line 60
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    .line 61
    goto :goto_18

    .line 64
    .end local v1           #t:Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    .end local v2           #xkbl:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
    :cond_30
    const/4 v3, 0x0

    goto :goto_18
.end method

.method public getSoftKeyboard(IIIILandroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .registers 10
    .parameter "skbCacheId"
    .parameter "skbXmlId"
    .parameter "skbWidth"
    .parameter "skbHeight"
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 72
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    .line 73
    .local v1, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getCacheId()I

    move-result v3

    if-ne v3, p1, :cond_26

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbXmlId()I

    move-result v3

    if-ne v3, p2, :cond_26

    .line 74
    invoke-virtual {v1, p3, p4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setSkbCoreSize(II)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setNewlyLoadedFlag(Z)V

    move-object v3, v1

    .line 90
    .end local v1           #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :goto_25
    return-object v3

    .line 71
    .restart local v1       #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v1           #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_29
    if-eqz p5, :cond_46

    .line 80
    new-instance v2, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;

    invoke-direct {v2, p5}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, xkbl:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
    invoke-virtual {v2, p2, p3, p4}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->loadKeyboard(III)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-result-object v1

    .line 82
    .restart local v1       #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    if-eqz v1, :cond_44

    .line 83
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getCacheFlag()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 84
    invoke-virtual {v1, p1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setCacheId(I)V

    .line 85
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_44
    move-object v3, v1

    .line 88
    goto :goto_25

    .line 90
    .end local v1           #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .end local v2           #xkbl:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
    :cond_46
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public onCachedOut()V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 42
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    .line 43
    .local v1, skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->saveBiasPref()V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    .end local v1           #skb:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_17
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 46
    return-void
.end method
