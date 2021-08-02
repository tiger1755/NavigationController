# NavigationControllerを使った画面遷移について

NavigationControllerClassを継承したViewControllerとNextViewControllerを用いて画面遷移の方法のサンプルコードです。

# TextFieldDelegateについて

キーボードを閉じる処理を記述する場合は、ViewCOntrollerClassに、UITextFieldDelegateを継承させる必要があります。
次に、ViewDidLoadの中で、どこでDelegateを使うのかを記述します。

"""swift
textfield.delegate = self
"""
