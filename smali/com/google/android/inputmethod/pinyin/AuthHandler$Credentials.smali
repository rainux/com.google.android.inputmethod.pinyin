.class public final Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
.super Ljava/lang/Object;
.source "AuthHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/AuthHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Credentials"
.end annotation


# instance fields
.field private mCredentialsIntent:Landroid/content/Intent;

.field private mCredentialsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsIntent:Landroid/content/Intent;

    .line 52
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsString:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsIntent:Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "token"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsIntent:Landroid/content/Intent;

    .line 52
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsString:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsString:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getCredentialsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCredentialsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;->mCredentialsString:Ljava/lang/String;

    return-object v0
.end method
