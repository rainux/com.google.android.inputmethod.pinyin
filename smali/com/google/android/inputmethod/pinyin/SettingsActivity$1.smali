.class final Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/SettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/SettingsActivity;

.field final synthetic val$progress:Landroid/view/View;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/SettingsActivity;Landroid/view/View;Landroid/webkit/WebView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->this$0:Lcom/google/android/inputmethod/pinyin/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->val$progress:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private pageLoaded(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->val$progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 207
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->pageLoaded(Landroid/webkit/WebView;)V

    .line 195
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/SettingsActivity$1;->pageLoaded(Landroid/webkit/WebView;)V

    .line 201
    return-void
.end method
