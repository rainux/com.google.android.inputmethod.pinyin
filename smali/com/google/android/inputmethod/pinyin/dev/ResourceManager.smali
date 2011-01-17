.class public Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

.field private mLandscapeResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPortraitResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mListeners:Ljava/util/LinkedList;

    .line 31
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mContext:Landroid/content/Context;

    .line 33
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;

    invoke-direct {v2, p1}, Lcom/google/android/inputmethod/pinyin/dev/PortraitResource;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mPortraitResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 34
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;

    invoke-direct {v2, p1}, Lcom/google/android/inputmethod/pinyin/dev/LandscapeResource;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mLandscapeResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 36
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 37
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 38
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_35

    .line 39
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mLandscapeResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 43
    :goto_34
    return-void

    .line 41
    :cond_35
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mPortraitResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    goto :goto_34
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->sInstance:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->sInstance:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 49
    :cond_b
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->sInstance:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    return-object v0
.end method


# virtual methods
.method public addOnResourceChangedListener(Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mListeners:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 61
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_34

    .line 66
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mPortraitResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 68
    :goto_9
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 71
    .local v1, cbr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;

    .line 72
    .local v0, cb:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;
    if-nez v0, :cond_2c

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 63
    .end local v0           #cb:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;
    .end local v1           #cbr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;"
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;>;"
    :pswitch_27
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mLandscapeResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    iput-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    goto :goto_9

    .line 75
    .restart local v0       #cb:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;
    .restart local v1       #cbr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;"
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;>;"
    :cond_2c
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->mCurrentResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-interface {v0, v3}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;->onResourceChanged(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    goto :goto_f

    .line 78
    .end local v0           #cb:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;
    .end local v1           #cbr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;>;"
    :cond_32
    return-void

    .line 61
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_27
    .end packed-switch
.end method
